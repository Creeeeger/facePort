.class public final Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final onCheckedChange:Lkotlin/reflect/KFunction;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f143077

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f143074

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$summary$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$summary$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$changeable$1;

    invoke-direct {p1, p3}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$changeable$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->changeable:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;

    invoke-direct {p1, p0, p4, p5}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;-><init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$onCheckedChange$1;

    const-class v3, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    const-string v4, "onCheckedChange"

    const/4 v1, 0x1

    const-string v5, "onCheckedChange(Z)V"

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->onCheckedChange:Lkotlin/reflect/KFunction;

    return-void
.end method


# virtual methods
.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->changeable:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->onCheckedChange:Lkotlin/reflect/KFunction;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->title:Ljava/lang/String;

    return-object p0
.end method
