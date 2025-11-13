.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    sget v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;

    iget-object v3, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyActionPreferenceController;

    iget-object v2, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    invoke-direct {v0, p0, v2, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyActionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
