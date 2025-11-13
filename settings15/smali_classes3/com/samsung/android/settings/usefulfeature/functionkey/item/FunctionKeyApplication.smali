.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final actions:Ljava/util/ArrayList;

.field public final componentInfo:Landroid/content/pm/ComponentInfo;

.field public final launchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/pm/ComponentInfo;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 9

    move-object v8, p0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, p6

    iput-object v0, v8, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->componentInfo:Landroid/content/pm/ComponentInfo;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->launchIntent:Landroid/content/Intent;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->actions:Ljava/util/ArrayList;

    return-void
.end method
