.class public final enum Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;",
        "",
        "",
        "menuId",
        "I",
        "getMenuId",
        "()I",
        "menuType",
        "getMenuType",
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
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public static final enum CANCEL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public static final enum CLEAR_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType$Companion;

.field public static final enum FORMAT:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public static final enum NONE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public static final enum UNINSTALL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;


# instance fields
.field private final menuId:I

.field private final menuType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const-string v1, "UNINSTALL"

    const/4 v2, 0x0

    const v3, 0x7f0a10b0

    const/16 v4, 0x154

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->UNINSTALL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const-string v3, "CLEAR_APP_CACHE"

    const/4 v4, 0x1

    const v5, 0x7f0a0380

    const/16 v6, 0x15e

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CLEAR_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const-string v4, "UNMOUNT"

    const/4 v5, 0x2

    const v6, 0x7f0a10b7

    const/16 v7, 0x186

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const-string v5, "FORMAT"

    const/4 v6, 0x3

    const v7, 0x7f0a06a6

    const/16 v8, 0x190

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->FORMAT:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const-string v6, "CANCEL"

    const/4 v7, 0x4

    const v8, 0x7f0a02cb

    const/16 v9, 0xd2

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CANCEL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    const/4 v7, -0x1

    const-string v8, "NONE"

    const/4 v9, 0x5

    invoke-direct {v6, v9, v2, v7, v8}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;-><init>(IIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->NONE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType$Companion;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->menuId:I

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->menuType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    return-object v0
.end method


# virtual methods
.method public final getMenuId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->menuId:I

    return p0
.end method

.method public final getMenuType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->menuType:I

    return p0
.end method
