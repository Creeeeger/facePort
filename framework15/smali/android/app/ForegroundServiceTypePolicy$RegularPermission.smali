.class Landroid/app/ForegroundServiceTypePolicy$RegularPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegularPermission"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 7

    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method blacklist checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)I
    .locals 7

    nop

    invoke-static {p1, p2, p4, p3, p5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2

    :cond_2
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v1, p3, p5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->-$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    return v2

    :pswitch_2
    if-nez v0, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    nop

    :goto_3
    return v2

    :pswitch_3
    if-eqz p6, :cond_6

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    move v2, v3

    goto :goto_4

    :cond_6
    nop

    :goto_4
    return v2

    :pswitch_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
