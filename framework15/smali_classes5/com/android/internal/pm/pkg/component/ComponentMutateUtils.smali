.class public Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;
.super Ljava/lang/Object;
.source "ComponentMutateUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    return-void
.end method

.method public static blacklist setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    return-void
.end method

.method public static blacklist setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static blacklist setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static blacklist setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    return-void
.end method

.method public static blacklist setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static blacklist setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    return-void
.end method

.method public static blacklist setPriority(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    return-void
.end method

.method public static blacklist setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    return-void
.end method

.method public static blacklist setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSupportsSizeChanges(Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static blacklist setSyncable(Lcom/android/internal/pm/pkg/component/ParsedProvider;Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    return-void
.end method
