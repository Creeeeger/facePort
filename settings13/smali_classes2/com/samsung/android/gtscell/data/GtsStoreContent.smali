.class public abstract Lcom/samsung/android/gtscell/data/GtsStoreContent;
.super Ljava/lang/Object;
.source "GtsStoreContents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsStoreContent$PlayStoreApp;,
        Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;,
        Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreSticker;,
        Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyOpenTheme;,
        Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeWallpaper;,
        Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeIconPack;
    }
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/samsung/android/gtscell/data/GtsStoreType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/gtscell/data/GtsStoreType;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->type:Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/gtscell/data/GtsStoreType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;-><init>(Lcom/samsung/android/gtscell/data/GtsStoreType;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getPackageName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getType()Lcom/samsung/android/gtscell/data/GtsStoreType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->type:Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-object p0
.end method
