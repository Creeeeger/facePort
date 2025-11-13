.class public abstract enum Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$APP_CACHE;,
        Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$DUPLICATED_FILES;,
        Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$LARGE_FILES;,
        Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$TRASH_APPS;,
        Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$UNUSED_APPS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;",
        "",
        "",
        "saType",
        "I",
        "getSaType",
        "()I",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$Companion;


# instance fields
.field private final saType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$LARGE_FILES;

    const-string v1, "LARGE_FILES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$DUPLICATED_FILES;

    const-string v2, "DUPLICATED_FILES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$TRASH_APPS;

    const-string v3, "TRASH_APPS"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$UNUSED_APPS;

    const-string v4, "UNUSED_APPS"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$APP_CACHE;

    const/4 v5, 0x5

    const-string v7, "APP_CACHE"

    invoke-direct {v4, v7, v6, v5}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->saType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createASList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;
.end method

.method public final getSaType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->saType:I

    return p0
.end method

.method public isFileType()Z
    .locals 0

    instance-of p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$DUPLICATED_FILES;

    return p0
.end method
