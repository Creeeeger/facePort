.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getSwitchTitleResId()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1$changeable$1;

    invoke-direct {p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1$changeable$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->changeable:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1$onCheckedChange$1;

    invoke-direct {p2, p1, p5}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1$onCheckedChange$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->changeable:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;->title:Ljava/lang/String;

    return-object p0
.end method
