.class public final Lcom/samsung/android/settings/actions/ActionData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActionType:I

.field public final mFragmentClassName:Ljava/lang/String;

.field public final mIconResource:I

.field public final mKey:Ljava/lang/String;

.field public final mKeywords:Ljava/lang/String;

.field public final mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

.field public final mPreferenceController:Ljava/lang/String;

.field public final mRecoverable:Z

.field public final mRestoreKey:Ljava/lang/String;

.field public final mScreenTitle:Ljava/lang/CharSequence;

.field public final mSummary:Ljava/lang/String;

.field public final mTargetFragment:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/ActionData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mSummary:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mScreenTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKeywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKeywords:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mIconResource:I

    iput v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mIconResource:I

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mFragmentClassName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mPreferenceController:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mActionType:I

    iput v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mActionType:I

    iget-boolean v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRecoverable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRecoverable:Z

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRestoreKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRestoreKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTargetFragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTargetFragment:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/actions/ActionData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/actions/ActionData;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
