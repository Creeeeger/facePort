.class public final enum Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
.super Ljava/lang/Enum;
.source "ControlResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/ControlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/cube/ControlResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

.field public static final enum ASYNC:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

.field public static final enum FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

.field public static final enum REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 10
    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 11
    new-instance v3, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    const-string v5, "REQUEST_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 12
    new-instance v5, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    const-string v7, "ASYNC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->ASYNC:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
    .locals 1

    .line 8
    const-class v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-object v0
.end method
