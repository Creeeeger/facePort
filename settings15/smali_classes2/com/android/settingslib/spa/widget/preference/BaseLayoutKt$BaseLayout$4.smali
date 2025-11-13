.class final Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $enabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $paddingEnd:F

.field final synthetic $paddingStart:F

.field final synthetic $paddingVertical:F

.field final synthetic $subTitle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $titleContentDescription:Ljava/lang/String;

.field final synthetic $widget:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$subTitle:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$titleContentDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$icon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$enabled:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingStart:F

    iput p8, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingEnd:F

    iput p9, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingVertical:F

    iput-object p10, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$widget:Lkotlin/jvm/functions/Function2;

    iput p11, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$$changed:I

    iput p12, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$subTitle:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$titleContentDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$icon:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$enabled:Lkotlin/jvm/functions/Function0;

    iget v6, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingStart:F

    iget v7, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingEnd:F

    iget v8, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$paddingVertical:F

    iget-object v9, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$widget:Lkotlin/jvm/functions/Function2;

    iget p1, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    iget v12, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;->$$default:I

    invoke-static/range {v0 .. v12}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->BaseLayout-IBxwOmc(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
