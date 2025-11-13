.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$7;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smaddStatusData(Ljava/util/ArrayList;Ljava/util/List;I)V

    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf33

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smaddStatusData(Ljava/util/ArrayList;Ljava/util/List;I)V

    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf35

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smaddStatusData(Ljava/util/ArrayList;Ljava/util/List;I)V

    const-string v0, "android.app.role.HOME"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smaddStatusData(Ljava/util/ArrayList;Ljava/util/List;I)V

    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xf37

    invoke-static {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smaddStatusData(Ljava/util/ArrayList;Ljava/util/List;I)V

    return-object p0
.end method
