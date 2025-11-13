.class public final Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->summary:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1$icon$1;

    invoke-direct {v0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1$icon$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x79e849c4

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->checked:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->changeable:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->changeable:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1;->title:Ljava/lang/String;

    return-object p0
.end method
