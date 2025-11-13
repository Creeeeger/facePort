.class public final Lcom/android/settingslib/animation/DisappearAnimationUtils;
.super Lcom/android/settingslib/animation/AppearAnimationUtils;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 8

    sget-object v7, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    const-wide/16 v2, 0x6e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    return-void
.end method
