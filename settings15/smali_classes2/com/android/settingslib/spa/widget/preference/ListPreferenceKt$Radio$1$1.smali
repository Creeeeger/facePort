.class final Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $onIdSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $option:Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;->$onIdSelected:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;->$option:Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;->$onIdSelected:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;->$option:Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;

    iget p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
