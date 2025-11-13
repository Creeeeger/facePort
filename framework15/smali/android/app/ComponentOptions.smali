.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;
.source "ComponentOptions.java"


# static fields
.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"

.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED_BY_PERMISSION:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowedByPermission"


# instance fields
.field private blacklist mPendingIntentBalAllowed:Ljava/lang/Integer;

.field private blacklist mPendingIntentBalAllowedByPermission:Z


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    nop

    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    nop

    const-string v1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/ComponentOptions;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ComponentOptions;

    invoke-direct {v0, p0}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist getPendingIntentBackgroundActivityStartMode()I
    .locals 1

    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return v0
.end method

.method public blacklist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return-void
.end method

.method public blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    nop

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    if-eqz v1, :cond_1

    const-string v1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    iget-boolean v2, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object v0
.end method
