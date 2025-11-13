.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# static fields
.field public static final IS_GLOBAL_NAMING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isAtLeastOneUI_6_1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard;->IS_GLOBAL_NAMING:Z

    return-void
.end method


# virtual methods
.method public final getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard$1;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    sget-boolean p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard;->IS_GLOBAL_NAMING:Z

    if-eqz p0, :cond_0

    const p0, 0x7f141e3e

    goto :goto_0

    :cond_0
    const p0, 0x7f141e3f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f141e40

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportProfileType()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "com.samsung.android.oneconnect"

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
