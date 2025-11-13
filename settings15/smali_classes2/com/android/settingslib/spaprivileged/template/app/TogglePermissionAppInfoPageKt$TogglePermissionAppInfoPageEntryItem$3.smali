.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/jvm/internal/Lambda;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getPageTitleResId()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->title:Ljava/lang/String;

    const/16 p1, 0x40

    invoke-virtual {p3, p4, p2, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->getSummary(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->summary:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->PAGE_PARAMETER:Ljava/util/List;

    invoke-static {p5, p6, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion;->navigator(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->onClick:Lkotlin/jvm/internal/Lambda;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->onClick:Lkotlin/jvm/internal/Lambda;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;->title:Ljava/lang/String;

    return-object p0
.end method
