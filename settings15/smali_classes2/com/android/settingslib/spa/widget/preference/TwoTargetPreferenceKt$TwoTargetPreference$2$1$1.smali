.class public final Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final icon:Lkotlin/jvm/functions/Function2;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->summary:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->icon:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->icon:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt$TwoTargetPreference$2$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
