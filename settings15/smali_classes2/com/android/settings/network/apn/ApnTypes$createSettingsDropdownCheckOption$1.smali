.class final Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;
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
.field final synthetic $changeable:Z

.field final synthetic $text:Ljava/lang/String;

.field final synthetic $this_createSettingsDropdownCheckOption:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$changeable:Z

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$this_createSettingsDropdownCheckOption:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$text:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$changeable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$this_createSettingsDropdownCheckOption:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$text:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140e58

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;->$this_createSettingsDropdownCheckOption:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
