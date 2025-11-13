.class public final enum Landroid/telephony/SmsMessage$MessageTpPid;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTpPid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/SmsMessage$MessageTpPid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum blacklist MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum blacklist MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum blacklist MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum blacklist MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 1307
    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v1, "MSG_PID_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 1308
    new-instance v1, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v3, "MSG_PID_SMS_HANDLED"

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-direct {v1, v3, v4, v5}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 1309
    new-instance v3, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v5, "MSG_PID_LBS_PORT"

    const/4 v6, 0x2

    const/16 v7, 0x51

    invoke-direct {v3, v5, v6, v7}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 1310
    new-instance v5, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v7, "MSG_PID_APPLICATION_PORT"

    const/4 v8, 0x3

    const/16 v9, 0x53

    invoke-direct {v5, v7, v8, v9}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 1306
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1315
    iput p3, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    .line 1316
    return-void
.end method

.method public static blacklist fromInt(I)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 5
    .param p0, "value"    # I

    .line 1322
    invoke-static {}, Landroid/telephony/SmsMessage$MessageTpPid;->values()[Landroid/telephony/SmsMessage$MessageTpPid;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1323
    .local v3, "e":Landroid/telephony/SmsMessage$MessageTpPid;
    iget v4, v3, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    if-ne v4, p0, :cond_0

    .line 1324
    return-object v3

    .line 1322
    .end local v3    # "e":Landroid/telephony/SmsMessage$MessageTpPid;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1306
    const-class v0, Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1

    .line 1306
    sget-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v0}, [Landroid/telephony/SmsMessage$MessageTpPid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 1

    .line 1318
    iget v0, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    return v0
.end method
