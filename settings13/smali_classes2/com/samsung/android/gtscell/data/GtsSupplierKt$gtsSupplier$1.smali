.class public final Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;
.super Ljava/lang/Object;
.source "GtsSupplier.kt"

# interfaces
.implements Lcom/samsung/android/gtscell/data/GtsSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/data/GtsSupplierKt;->gtsSupplier(Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/gtscell/data/GtsSupplier<",
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsSupplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsSupplier.kt\ncom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1\n*L\n1#1,9:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;->$action:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;->$action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
