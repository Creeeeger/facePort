.class public final Lcom/android/settings/accessibility/CaptionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field public final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-class v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionHelper;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_0

    :cond_0
    const p0, 0xffffff

    :goto_0
    return p0
.end method

.method public final getForegroundColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    const p0, 0xffffff

    :goto_0
    return p0
.end method

.method public final getWindowColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_0

    :cond_0
    const p0, 0xffffff

    :goto_0
    return p0
.end method
