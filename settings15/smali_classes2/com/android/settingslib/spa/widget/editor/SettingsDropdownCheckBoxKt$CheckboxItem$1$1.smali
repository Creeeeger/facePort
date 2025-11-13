.class final Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$CheckboxItem$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $option:Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$CheckboxItem$1$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$CheckboxItem$1$1;->$option:Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$CheckboxItem$1$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$CheckboxItem$1$1;->$option:Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
