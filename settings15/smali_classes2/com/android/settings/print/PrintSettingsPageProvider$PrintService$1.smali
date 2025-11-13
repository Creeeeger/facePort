.class public final Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$summary$1;

    invoke-direct {v0, p2}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$summary$1;-><init>(Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$icon$1;

    invoke-direct {v0, p2}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$icon$1;-><init>(Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x7c23cd5b

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$onClick$1;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1$onClick$1;-><init>(Landroid/content/Context;Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;->title:Ljava/lang/String;

    return-object p0
.end method
