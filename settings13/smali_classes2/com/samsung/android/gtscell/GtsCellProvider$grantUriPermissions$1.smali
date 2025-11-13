.class final Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GtsCellProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/GtsCellProvider;->grantUriPermissions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/gtscell/data/GtsItem;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/GtsCellProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItem;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$grantUriPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingPkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    if-ne v0, v1, :cond_1

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getTypedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 310
    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "grantUriPermissions: uri="

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method
