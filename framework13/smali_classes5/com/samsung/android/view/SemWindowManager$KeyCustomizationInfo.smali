.class public final Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.super Ljava/lang/Object;
.source "SemWindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/SemWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyCustomizationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist action:I

.field public blacklist dispatching:I

.field public blacklist id:I

.field public blacklist intent:Landroid/content/Intent;

.field public blacklist keyCode:I

.field public blacklist longPressTimeoutMs:J

.field public blacklist multiPressTimeoutMs:J

.field public blacklist ownerPackage:Ljava/lang/String;

.field public blacklist press:I

.field public blacklist userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1518
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1144
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 1163
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1174
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1190
    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 1197
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 1223
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 6
    .param p1, "press"    # I
    .param p2, "id"    # I
    .param p3, "keyCode"    # I
    .param p4, "action"    # I

    .line 1229
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 1230
    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/content/Intent;)V
    .locals 7
    .param p1, "press"    # I
    .param p2, "id"    # I
    .param p3, "keyCode"    # I
    .param p4, "action"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    .line 1237
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;I)V

    .line 1238
    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/content/Intent;I)V
    .locals 9
    .param p1, "press"    # I
    .param p2, "id"    # I
    .param p3, "keyCode"    # I
    .param p4, "action"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "dispatching"    # I

    .line 1245
    const/4 v7, -0x2

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;IILjava/lang/String;)V

    .line 1246
    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/content/Intent;II)V
    .locals 9
    .param p1, "press"    # I
    .param p2, "id"    # I
    .param p3, "keyCode"    # I
    .param p4, "action"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "dispatching"    # I
    .param p7, "userId"    # I

    .line 1253
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;IILjava/lang/String;)V

    .line 1254
    return-void
.end method

.method private constructor blacklist <init>(IIIILandroid/content/Intent;IILjava/lang/String;)V
    .locals 2
    .param p1, "press"    # I
    .param p2, "id"    # I
    .param p3, "keyCode"    # I
    .param p4, "action"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "dispatching"    # I
    .param p7, "userId"    # I
    .param p8, "ownerPackage"    # Ljava/lang/String;

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1144
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 1163
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1174
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1190
    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 1197
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 1264
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1265
    iput p2, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 1266
    iput p3, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1267
    iput p4, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1268
    iput-object p5, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1269
    iput p6, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 1270
    iput p7, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 1271
    iput-object p8, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 1272
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1144
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 1163
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1174
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1190
    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 1197
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 1542
    invoke-virtual {p0, p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1543
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)V
    .locals 9
    .param p1, "builder"    # Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;

    .line 1257
    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetpress(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetid(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetkeyCode(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v3

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetaction(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v4

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetintent(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetdispatching(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v6

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetuserId(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I

    move-result v7

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->-$$Nest$fgetownerPackage(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;IILjava/lang/String;)V

    .line 1259
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1480
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    .line 1319
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    return v0
.end method

.method public whitelist getDispatching()I
    .locals 1

    .line 1336
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 1295
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKeyCode()I
    .locals 1

    .line 1311
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    return v0
.end method

.method public whitelist getOwnerPackage()Ljava/lang/String;
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPress()I
    .locals 1

    .line 1303
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    return v0
.end method

.method public whitelist getUserId()I
    .locals 1

    .line 1344
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 1505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1507
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 1509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 1510
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    .line 1511
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    .line 1512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 1513
    return-void
.end method

.method public blacklist setLongPressTimeoutMs(J)V
    .locals 0
    .param p1, "longPressTimeoutMs"    # J

    .line 1279
    iput-wide p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    .line 1280
    return-void
.end method

.method public blacklist setMultiPressTimeoutMs(J)V
    .locals 0
    .param p1, "multiPressTimeoutMs"    # J

    .line 1287
    iput-wide p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    .line 1288
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1487
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1492
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-wide v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1495
    iget-wide v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1496
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    return-void
.end method
