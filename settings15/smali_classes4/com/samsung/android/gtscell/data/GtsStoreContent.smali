.class public abstract Lcom/samsung/android/gtscell/data/GtsStoreContent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\r\u000e\u000f\u0010\u0011\u0012B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\u0006\u0013\u0014\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsStoreContent;",
        "",
        "type",
        "Lcom/samsung/android/gtscell/data/GtsStoreType;",
        "(Lcom/samsung/android/gtscell/data/GtsStoreType;)V",
        "contentType",
        "",
        "getContentType",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
        "getType",
        "()Lcom/samsung/android/gtscell/data/GtsStoreType;",
        "GalaxyOpenTheme",
        "GalaxyStoreApp",
        "GalaxyStoreSticker",
        "GalaxyThemeIconPack",
        "GalaxyThemeWallpaper",
        "PlayStoreApp",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$PlayStoreApp;",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreSticker;",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyOpenTheme;",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeWallpaper;",
        "Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyThemeIconPack;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final type:Lcom/samsung/android/gtscell/data/GtsStoreType;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gtscell/data/GtsStoreType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->type:Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/gtscell/data/GtsStoreType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;-><init>(Lcom/samsung/android/gtscell/data/GtsStoreType;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final getType()Lcom/samsung/android/gtscell/data/GtsStoreType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsStoreContent;->type:Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-object p0
.end method
