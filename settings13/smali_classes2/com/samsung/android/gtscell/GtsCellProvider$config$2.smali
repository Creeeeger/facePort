.class final Lcom/samsung/android/gtscell/GtsCellProvider$config$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GtsCellProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/GtsCellProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/gtscell/data/GtsConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/GtsCellProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;->invoke()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object p0

    return-object p0
.end method
