.class final enum Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;
.super Ljava/lang/Enum;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pose"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

.field public static final enum CENTER:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

.field public static final enum UP:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 2
    .line 3
    const-string v1, "CENTER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->CENTER:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 12
    .line 13
    const-string v2, "UP"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->UP:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->$VALUES:[Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 26
    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->$VALUES:[Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 8
    .line 9
    return-object v0
.end method
