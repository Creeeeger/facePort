.class public final Lcom/android/systemui/keyguard/KeyguardIndication;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackground:Landroid/graphics/drawable/Drawable;

.field public final mForceAccessibilityLiveRegionAssertive:Z

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mMessage:Ljava/lang/CharSequence;

.field public final mMinVisibilityMillis:Ljava/lang/Long;

.field public final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mForceAccessibilityLiveRegionAssertive:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyguardIndication{mMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardIndication{"

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const-string v1, " mIcon="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    const-string v1, " mOnClickListener="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    const-string v1, " mBackground="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mMinVisibilityMillis="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mForceAccessibilityLiveRegionAssertive:Z

    if-eqz p0, :cond_5

    const-string p0, "mForceAccessibilityLiveRegionAssertive"

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string/jumbo p0, "}"

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
