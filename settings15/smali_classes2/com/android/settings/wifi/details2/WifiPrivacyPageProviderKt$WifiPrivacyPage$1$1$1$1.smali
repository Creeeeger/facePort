.class public final Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final onIdSelected:Lkotlin/jvm/functions/Function1;

.field public final options:Ljava/util/List;

.field public final selectedId:Landroidx/compose/runtime/MutableIntState;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->options:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->selectedId:Landroidx/compose/runtime/MutableIntState;

    new-instance p1, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1$onIdSelected$1;

    invoke-direct {p1, p3, p4}, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1$onIdSelected$1;-><init>(Landroidx/compose/runtime/MutableIntState;Lcom/android/wifitrackerlib/WifiEntry;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->onIdSelected:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1$enabled$1;

    invoke-direct {p1, p5}, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1$enabled$1;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnIdSelected()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->onIdSelected:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->options:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedId()Landroidx/compose/runtime/MutableIntState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->selectedId:Landroidx/compose/runtime/MutableIntState;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$WifiPrivacyPage$1$1$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
