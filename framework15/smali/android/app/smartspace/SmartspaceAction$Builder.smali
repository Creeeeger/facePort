.class public final Landroid/app/smartspace/SmartspaceAction$Builder;
.super Ljava/lang/Object;
.source "SmartspaceAction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mId:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/SmartspaceAction;
    .locals 12

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_0
    new-instance v0, Landroid/app/smartspace/SmartspaceAction;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v10, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/app/smartspace/SmartspaceAction;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceAction-IA;)V

    return-object v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method
