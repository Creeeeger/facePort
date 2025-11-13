.class public final Lcom/android/systemui/keyguard/KeyguardIndication$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mForceAccessibilityLiveRegionAssertive:Z

.field public mMessage:Ljava/lang/CharSequence;

.field public mMinVisibilityMillis:Ljava/lang/Long;

.field public mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/keyguard/KeyguardIndication;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMessage:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMinVisibilityMillis:Ljava/lang/Long;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mForceAccessibilityLiveRegionAssertive:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "text color must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "message or icon must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
