.class public abstract Lcom/android/settings/widget/SummaryUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

.field public mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/widget/SummaryUpdater;->mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

    return-void
.end method


# virtual methods
.method public abstract getSummary()Ljava/lang/String;
.end method

.method public final notifyChangeIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SummaryUpdater;->mSummary:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mSummary:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/settings/network/InternetPreferenceController;

    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
