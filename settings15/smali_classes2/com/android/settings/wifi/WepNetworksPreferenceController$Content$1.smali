.class public final Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/wifi/WepNetworksPreferenceController;Landroidx/compose/runtime/MutableState;Landroid/net/wifi/WifiInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    const v0, 0x7f143299

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$summary$1;

    invoke-direct {p1, p2}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$summary$1;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$checked$1;

    invoke-direct {p1, p3}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$checked$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$onCheckedChange$1;

    invoke-direct {p1, p4, p2, p5}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$onCheckedChange$1;-><init>(Landroid/net/wifi/WifiInfo;Lcom/android/settings/wifi/WepNetworksPreferenceController;Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$changeable$1;

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1$changeable$1;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;)V

    return-object v0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;->title:Ljava/lang/String;

    return-object p0
.end method
