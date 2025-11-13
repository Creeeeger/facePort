.class public final enum Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v2, "UNKNOWN_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v3, "STORAGE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v4, "INVALID_DATA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v4, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const/4 v5, 0x7

    const-string v6, "PARTIAL_SUCCESS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
    .locals 1

    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
    .locals 1

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    invoke-virtual {v0}, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->value:I

    return p0
.end method
