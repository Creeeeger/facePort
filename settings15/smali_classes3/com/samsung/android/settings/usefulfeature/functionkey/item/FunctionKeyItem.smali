.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final availabilityStatus:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final key:Ljava/lang/String;

.field public final order:I

.field public final pressType:I

.field public final summary:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->pressType:I

    iput p3, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->availabilityStatus:I

    iput-object p4, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->summary:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->order:I

    return-void
.end method
