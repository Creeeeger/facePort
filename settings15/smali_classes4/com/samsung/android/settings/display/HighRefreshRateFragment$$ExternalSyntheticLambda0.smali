.class public final synthetic Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x28aa

    const/16 v0, 0x28b0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    const/16 v1, 0x3e7

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
