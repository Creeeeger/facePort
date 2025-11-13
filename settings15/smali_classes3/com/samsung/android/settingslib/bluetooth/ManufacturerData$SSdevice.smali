.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 41

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    new-instance v0, Ljava/util/ArrayList;

    const-string v39, "[Airdresser] "

    const-string v40, "[AI Speaker] "

    const-string v1, "[Phone] "

    const-string v2, "[Tablet] "

    const-string v3, "[Wearable] "

    const-string v4, "[PC] "

    const-string v5, "[Accessory] "

    const-string v6, "[TV] "

    const-string v7, "[AV] "

    const-string v8, "[Signage] "

    const-string v9, "[Refrigerator] "

    const-string v10, "[Washer] "

    const-string v11, "[Dryer] "

    const-string v12, "[Floor A/C] "

    const-string v13, "[Room A/C] "

    const-string v14, "[System A/C] "

    const-string v15, "[Air Purifier] "

    const-string v16, "[Oven] "

    const-string v17, "[Range] "

    const-string v18, "[Robot Vacuum] "

    const-string v19, "[Smart Home] "

    const-string v20, "[Printer] "

    const-string v21, "[Headphone] "

    const-string v22, "[Speaker] "

    const-string v23, "[Monitor] "

    const-string v24, "[E-Board] "

    const-string v25, "[IoT] "

    const-string v26, "[Camera] "

    const-string v27, "[Camcorder] "

    const-string v28, "[Cooktop] "

    const-string v29, "[Dish Washer] "

    const-string v30, "[Microwave Oven] "

    const-string v31, "[Hood] "

    const-string v32, "[KimchiRef] "

    const-string v33, "[Watch] "

    const-string v34, "[Band] "

    const-string v35, "[Router] "

    const-string v36, "[BD] "

    const-string v37, "[Tag] "

    const-string v38, "[Car] "

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method
