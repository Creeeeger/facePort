.class public abstract Lcom/android/settingslib/spa/framework/theme/SettingsShape;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/16 v0, 0xc

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/16 v0, 0x1c

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method
