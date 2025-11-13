.class public final enum Lcom/android/settings/accessibility/ScreenFlashNotificationColor;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/accessibility/ScreenFlashNotificationColor;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

.field public static final enum YELLOW:Lcom/android/settings/accessibility/ScreenFlashNotificationColor;


# instance fields
.field final mColorInt:I

.field final mOpaqueColorInt:I

.field final mStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v1, "BLUE"

    const/4 v2, 0x0

    const v3, 0x4d0000fe    # 1.342218E8f

    const v4, 0x7f141fcb

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v1, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v2, "AZURE"

    const/4 v3, 0x1

    const v4, 0x660080ff

    const v5, 0x7f141fca

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v2, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v3, "CYAN"

    const/4 v4, 0x2

    const v5, 0x4d00ffff    # 1.3526629E8f

    const v6, 0x7f141fcd

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v3, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v4, "SPRING_GREEN"

    const/4 v5, 0x3

    const v6, 0x6600ff7f

    const v7, 0x7f141fd3

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v4, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v5, "GREEN"

    const/4 v6, 0x4

    const v7, 0x6600ff01

    const v8, 0x7f141fce

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v5, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v6, "CHARTREUSE_GREEN"

    const/4 v7, 0x5

    const v8, 0x6680ff00

    const v9, 0x7f141fcc

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v6, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v7, "YELLOW"

    const/4 v8, 0x6

    const v9, 0x66ffff00

    const v10, 0x7f141fd5

    invoke-direct {v6, v8, v9, v10, v7}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    sput-object v6, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->YELLOW:Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    new-instance v7, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v8, "ORANGE"

    const/4 v9, 0x7

    const v10, 0x66ff7f00

    const v11, 0x7f141fd0

    invoke-direct {v7, v9, v10, v11, v8}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v8, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v9, "RED"

    const/16 v10, 0x8

    const/high16 v11, 0x66fe0000

    const v12, 0x7f141fd1

    invoke-direct {v8, v10, v11, v12, v9}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v9, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v10, "ROSE"

    const/16 v11, 0x9

    const v12, 0x4dff017e    # 5.34786E8f

    const v13, 0x7f141fd2

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v10, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v11, "MAGENTA"

    const/16 v12, 0xa

    const v13, 0x4dff00fe    # 5.347819E8f

    const v14, 0x7f141fcf

    invoke-direct {v10, v12, v13, v14, v11}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    new-instance v11, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    const-string v12, "VIOLET"

    const/16 v13, 0xb

    const v14, 0x667f00ff

    const v15, 0x7f141fd4

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;-><init>(IIILjava/lang/String;)V

    filled-new-array/range {v0 .. v11}, [Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->$VALUES:[Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->mColorInt:I

    iput p3, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->mStringRes:I

    const/high16 p1, -0x1000000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->mOpaqueColorInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/ScreenFlashNotificationColor;
    .locals 1

    const-class v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/accessibility/ScreenFlashNotificationColor;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->$VALUES:[Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    invoke-virtual {v0}, [Lcom/android/settings/accessibility/ScreenFlashNotificationColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    return-object v0
.end method
