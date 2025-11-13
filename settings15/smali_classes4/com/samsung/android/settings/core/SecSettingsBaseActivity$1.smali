.class public final Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    return-void
.end method


# virtual methods
.method public final canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    iget-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method
