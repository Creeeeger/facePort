.class public final Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeIconPack;
.super Lcom/samsung/android/gtscell/data/GtsStoreContent;
.source "GtsStoreContents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsStoreContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GalaxyThemeIconPack"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_THEME_ICON_PACK:Lcom/samsung/android/gtscell/data/GtsStoreType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;-><init>(Lcom/samsung/android/gtscell/data/GtsStoreType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeIconPack;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeIconPack;->packageName:Ljava/lang/String;

    return-object p0
.end method
