.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final actionIntent:Landroid/content/Intent;

.field public final actionIntentType:I

.field public final actionType:I

.field public final actionValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionValue"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V

    iput p8, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionType:I

    iput-object p9, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionValue:Ljava/lang/String;

    iput p10, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionIntentType:I

    iput-object p11, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionIntent:Landroid/content/Intent;

    return-void
.end method
