.class final enum Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
.super Ljava/lang/Enum;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum blacklist INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum blacklist RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum blacklist RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;


# instance fields
.field private blacklist code:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 87
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "INVALID_VALUE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 88
    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v3, "RESULT_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 89
    new-instance v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v5, "RESULT_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 86
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    .line 95
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1

    .line 86
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method


# virtual methods
.method public blacklist getCode()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    return v0
.end method
