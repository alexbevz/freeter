<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Freeter</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Feed</a>
                </li>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/user-messages/${currentUserId}">My Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/profile">Profile</a>
                    </li>
                </#if>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" href="/user">User List</a>
                    </li>
                </#if>
            </ul>

            <#if known>
                <div class="navbar-text me-3">
                    ${name}
                </div>
                <@l.logout/>
            <#else>
                <a class="btn btn-primary me-3" href="/login" type="submit">Log In</a>
                <a class="btn btn-primary me-3" href="/registration" type="submit">Sign Up</a>
            </#if>
        </div>
    </div>
</nav>
