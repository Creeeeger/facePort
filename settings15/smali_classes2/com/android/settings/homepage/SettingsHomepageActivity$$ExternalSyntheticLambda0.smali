.class public final synthetic Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    check-cast p1, Landroidx/fragment/app/Fragment;

    sget-object v0, Lcom/android/settings/homepage/SettingsHomepageActivity;->EXTRA_INITIAL_REFERRER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/settings/homepage/SplitLayoutListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/homepage/SplitLayoutListener;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p1, p0}, Lcom/android/settings/homepage/TopLevelSettings;->updateLayout(Z)V

    :cond_0
    return-void
.end method
