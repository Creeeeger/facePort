.class public final enum Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType$Companion;

.field public static final enum OTHER:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

.field public static final map:Ljava/util/Map;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 115

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v1, "Other"

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->OTHER:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    new-instance v1, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v2, "Walking"

    const-string v3, "WALKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v3, "Running"

    const-string v4, "RUNNING"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v4, "Floor climb"

    const-string v5, "FLOOR_CLIMB"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v5, "Track run"

    const-string v6, "TRACK_RUN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v6, "Baseball"

    const-string v7, "BASEBALL"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v7, "Softball"

    const-string v8, "SOFTBALL"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v8, "Cricket"

    const-string v9, "CRICKET"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v9, "Golf"

    const-string v10, "GOLF"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v10, "Bowling"

    const-string v11, "BOWLING"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v11, "HOCKEY"

    const/16 v15, 0xa

    const-string v12, "Hockey"

    invoke-direct {v10, v11, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Rugby"

    const-string v13, "RUGBY"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v13, "Basketball"

    const-string v14, "BASKETBALL"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v14, "Soccer"

    const-string v15, "SOCCER"

    move-object/from16 v17, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Handball"

    const-string v15, "HANDBALL"

    move-object/from16 v18, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Football"

    const-string v13, "FOOTBALL"

    move-object/from16 v19, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "VOLLEYBALL"

    const/16 v13, 0x10

    move-object/from16 v20, v15

    const-string v15, "Volleyball"

    invoke-direct {v14, v12, v13, v15}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Beach volleyball"

    const-string v13, "BEACH_VOLLEYBALL"

    move-object/from16 v22, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Squash"

    const-string v13, "SQUASH"

    move-object/from16 v23, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Tennis"

    const-string v13, "TENNIS"

    move-object/from16 v24, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Badminton"

    const-string v13, "BADMINTON"

    move-object/from16 v25, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Table tennis"

    const-string v13, "TABLE_TENNIS"

    move-object/from16 v26, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Racquetball"

    const-string v13, "RACQUETBALL"

    move-object/from16 v27, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Boxing"

    const-string v13, "BOXING"

    move-object/from16 v28, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Martial arts"

    const-string v13, "MARTIAL_ARTS"

    move-object/from16 v29, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Ballet"

    const-string v13, "BALLET"

    move-object/from16 v30, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Dancing"

    const-string v13, "DANCING"

    move-object/from16 v31, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Ballroom dancing"

    const-string v13, "BALLROOM_DANCING"

    move-object/from16 v32, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Pilates"

    const-string v13, "PILATES"

    move-object/from16 v33, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Yoga"

    const-string v13, "YOGA"

    move-object/from16 v34, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Stretching"

    const-string v13, "STRETCHING"

    move-object/from16 v35, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Jump rope"

    const-string v13, "JUMP_ROPE"

    move-object/from16 v36, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Hula-hooping"

    const-string v13, "HULA_HOOPING"

    move-object/from16 v37, v15

    const/16 v15, 0x20

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Push-ups"

    const-string v13, "PUSH_UPS"

    move-object/from16 v38, v14

    const/16 v14, 0x21

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Pull-ups"

    const-string v13, "PULL_UPS"

    move-object/from16 v39, v15

    const/16 v15, 0x22

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Sit-ups"

    const-string v13, "SIT_UPS"

    move-object/from16 v40, v14

    const/16 v14, 0x23

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Circuit training"

    const-string v13, "CIRCUIT_TRAINING"

    move-object/from16 v41, v15

    const/16 v15, 0x24

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Mountain climbers"

    const-string v13, "MOUNTAIN_CLIMBERS"

    move-object/from16 v42, v14

    const/16 v14, 0x25

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Jumping Jacks"

    const-string v13, "JUMPING_JACKS"

    move-object/from16 v43, v15

    const/16 v15, 0x26

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Burpee"

    const-string v13, "BURPEE"

    move-object/from16 v44, v14

    const/16 v14, 0x27

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Bench press"

    const-string v13, "BENCH_PRESS"

    move-object/from16 v45, v15

    const/16 v15, 0x28

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Squats"

    const-string v13, "SQUATS"

    move-object/from16 v46, v14

    const/16 v14, 0x29

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Lunges"

    const-string v13, "LUNGES"

    move-object/from16 v47, v15

    const/16 v15, 0x2a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Leg presses"

    const-string v13, "LEG_PRESSES"

    move-object/from16 v48, v14

    const/16 v14, 0x2b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Leg extensions"

    const-string v13, "LEG_EXTENSIONS"

    move-object/from16 v49, v15

    const/16 v15, 0x2c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Leg curls"

    const-string v13, "LEG_CURLS"

    move-object/from16 v50, v14

    const/16 v14, 0x2d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Back extensions"

    const-string v13, "BACK_EXTENSIONS"

    move-object/from16 v51, v15

    const/16 v15, 0x2e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Lat Pull-downs"

    const-string v13, "LAT_PULL_DOWNS"

    move-object/from16 v52, v14

    const/16 v14, 0x2f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Deadlifts"

    const-string v13, "DEADLIFTS"

    move-object/from16 v53, v15

    const/16 v15, 0x30

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Shoulder presses"

    const-string v13, "SHOULDER_PRESSES"

    move-object/from16 v54, v14

    const/16 v14, 0x31

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Front raises"

    const-string v13, "FRONT_RAISES"

    move-object/from16 v55, v15

    const/16 v15, 0x32

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Lateral raises"

    const-string v13, "LATERAL_RAISES"

    move-object/from16 v56, v14

    const/16 v14, 0x33

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Crunches"

    const-string v13, "CRUNCHES"

    move-object/from16 v57, v15

    const/16 v15, 0x34

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Leg raises"

    const-string v13, "LEG_RAISES"

    move-object/from16 v58, v14

    const/16 v14, 0x35

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Plank"

    const-string v13, "PLANK"

    move-object/from16 v59, v15

    const/16 v15, 0x36

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Arm curls"

    const-string v13, "ARM_CURLS"

    move-object/from16 v60, v14

    const/16 v14, 0x37

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Arm extensions"

    const-string v13, "ARM_EXTENSIONS"

    move-object/from16 v61, v15

    const/16 v15, 0x38

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Skaters"

    const-string v13, "SKATERS"

    move-object/from16 v62, v14

    const/16 v14, 0x39

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "High knees"

    const-string v13, "HANG_KNEES"

    move-object/from16 v63, v15

    const/16 v15, 0x3a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Inline skating"

    const-string v13, "INLINE_SKATING"

    move-object/from16 v64, v14

    const/16 v14, 0x3b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Hang gliding"

    const-string v13, "HANG_GLIDING"

    move-object/from16 v65, v15

    const/16 v15, 0x3c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Archery"

    const-string v13, "ARCHERY"

    move-object/from16 v66, v14

    const/16 v14, 0x3d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Horseback riding"

    const-string v13, "HORSEBACK_RIDING"

    move-object/from16 v67, v15

    const/16 v15, 0x3e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Bike"

    const-string v13, "BIKE"

    move-object/from16 v68, v14

    const/16 v14, 0x3f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Flying disc"

    const-string v13, "FLYING_DISC"

    move-object/from16 v69, v15

    const/16 v15, 0x40

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Roller skating"

    const-string v13, "ROLLER_SKATING"

    move-object/from16 v70, v14

    const/16 v14, 0x41

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Aerobics"

    const-string v13, "AEROBICS"

    move-object/from16 v71, v15

    const/16 v15, 0x42

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Hiking"

    const-string v13, "HIKING"

    move-object/from16 v72, v14

    const/16 v14, 0x43

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Rock climbing"

    const-string v13, "ROCK_CLIMBING"

    move-object/from16 v73, v15

    const/16 v15, 0x44

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Backpacking"

    const-string v13, "BACKPACKING"

    move-object/from16 v74, v14

    const/16 v14, 0x45

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Mountain biking"

    const-string v13, "MOUNTAIN_BIKING"

    move-object/from16 v75, v15

    const/16 v15, 0x46

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Orienteering"

    const-string v13, "ORIENTEERING"

    move-object/from16 v76, v14

    const/16 v14, 0x47

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Swimming"

    const-string v13, "SWIMMING"

    move-object/from16 v77, v15

    const/16 v15, 0x48

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Aquarobics"

    const-string v13, "AQUAROBICS"

    move-object/from16 v78, v14

    const/16 v14, 0x49

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Canoeing"

    const-string v13, "CANOEING"

    move-object/from16 v79, v15

    const/16 v15, 0x4a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Sailing"

    const-string v13, "SAILING"

    move-object/from16 v80, v14

    const/16 v14, 0x4b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Scuba diving"

    const-string v13, "SCUBA_DIVING"

    move-object/from16 v81, v15

    const/16 v15, 0x4c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Snorkeling"

    const-string v13, "SNORKELING"

    move-object/from16 v82, v14

    const/16 v14, 0x4d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Kayaking"

    const-string v13, "KAYAKING"

    move-object/from16 v83, v15

    const/16 v15, 0x4e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Kitesurfing"

    const-string v13, "KITESURFING"

    move-object/from16 v84, v14

    const/16 v14, 0x4f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Rafting"

    const-string v13, "RAFTING"

    move-object/from16 v85, v15

    const/16 v15, 0x50

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Rowing"

    const-string v13, "ROWING"

    move-object/from16 v86, v14

    const/16 v14, 0x51

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Windsurfing"

    const-string v13, "WINDSURFING"

    move-object/from16 v87, v15

    const/16 v15, 0x52

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Yachting"

    const-string v13, "YACHTING"

    move-object/from16 v88, v14

    const/16 v14, 0x53

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Water skiing"

    const-string v13, "WATER_SKIING"

    move-object/from16 v89, v15

    const/16 v15, 0x54

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Step machine"

    const-string v13, "STEP_MACHINE"

    move-object/from16 v90, v14

    const/16 v14, 0x55

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Weight machine"

    const-string v13, "WEIGHT_MACHINE"

    move-object/from16 v91, v15

    const/16 v15, 0x56

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Bike indoor"

    const-string v13, "BIKE_INDOOR"

    move-object/from16 v92, v14

    const/16 v14, 0x57

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Rowing machine"

    const-string v13, "ROWING_MACHINE"

    move-object/from16 v93, v15

    const/16 v15, 0x58

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Treadmill"

    const-string v13, "TREADMILL"

    move-object/from16 v94, v14

    const/16 v14, 0x59

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Elliptical trainer"

    const-string v13, "ELLIPTICAL_TRAINER"

    move-object/from16 v95, v15

    const/16 v15, 0x5a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Stair climber"

    const-string v13, "STAIR_CLIMBER"

    move-object/from16 v96, v14

    const/16 v14, 0x5b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Cross-country skiing"

    const-string v13, "CROSS_COUNTRY_SKIING"

    move-object/from16 v97, v15

    const/16 v15, 0x5c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Skiing"

    const-string v13, "SKIING"

    move-object/from16 v98, v14

    const/16 v14, 0x5d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Ice dancing"

    const-string v13, "ICE_DANCING"

    move-object/from16 v99, v15

    const/16 v15, 0x5e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Ice skating"

    const-string v13, "ICE_SKATING"

    move-object/from16 v100, v14

    const/16 v14, 0x5f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Ice hockey"

    const-string v13, "ICE_HOCKEY"

    move-object/from16 v101, v15

    const/16 v15, 0x60

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Snowboarding"

    const-string v13, "SNOWBOARDING"

    move-object/from16 v102, v14

    const/16 v14, 0x61

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Alpine skiing"

    const-string v13, "ALPINE_SKIING"

    move-object/from16 v103, v15

    const/16 v15, 0x62

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Snowshoeing"

    const-string v13, "SNOWSHOEING"

    move-object/from16 v104, v14

    const/16 v14, 0x63

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Triathlon"

    const-string v13, "TRIATHLON"

    move-object/from16 v105, v15

    const/16 v15, 0x64

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Duathlon"

    const-string v13, "DUATHLON"

    move-object/from16 v106, v14

    const/16 v14, 0x65

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Aquathlon"

    const-string v13, "AQUATHLON"

    move-object/from16 v107, v15

    const/16 v15, 0x66

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Aquabike"

    const-string v13, "AQUABIKE"

    move-object/from16 v108, v14

    const/16 v14, 0x67

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Cross triathlon"

    const-string v13, "CROSS_TRIATHLON"

    move-object/from16 v109, v15

    const/16 v15, 0x68

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Cross Duathlon"

    const-string v13, "CROSS_DUATHLON"

    move-object/from16 v110, v14

    const/16 v14, 0x69

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Break"

    const-string v13, "BREAK"

    move-object/from16 v111, v15

    const/16 v15, 0x6a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Cool Down"

    const-string v13, "COOL_DOWN"

    move-object/from16 v112, v14

    const/16 v14, 0x6b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Warm Up"

    const-string v13, "WARM_UP"

    move-object/from16 v113, v15

    const/16 v15, 0x6c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    const-string v12, "Transition"

    const-string v13, "TRANSITION"

    move-object/from16 v114, v14

    const/16 v14, 0x6d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v12, v17

    const/16 v14, 0x10

    move-object/from16 v13, v18

    move-object/from16 v17, v22

    move-object/from16 v18, v24

    move-object/from16 v21, v26

    move-object/from16 v22, v28

    move-object/from16 v24, v30

    move-object/from16 v26, v32

    move-object/from16 v28, v34

    move-object/from16 v30, v36

    move-object/from16 v32, v38

    move-object/from16 v34, v40

    move-object/from16 v36, v42

    move-object/from16 v38, v44

    move-object/from16 v40, v46

    move-object/from16 v42, v48

    move-object/from16 v44, v50

    move-object/from16 v46, v52

    move-object/from16 v48, v54

    move-object/from16 v50, v56

    move-object/from16 v52, v58

    move-object/from16 v54, v60

    move-object/from16 v56, v62

    move-object/from16 v58, v64

    move-object/from16 v60, v66

    move-object/from16 v62, v68

    move-object/from16 v64, v70

    move-object/from16 v66, v72

    move-object/from16 v68, v74

    move-object/from16 v70, v76

    move-object/from16 v72, v78

    move-object/from16 v74, v80

    move-object/from16 v76, v82

    move-object/from16 v78, v84

    move-object/from16 v80, v86

    move-object/from16 v82, v88

    move-object/from16 v84, v90

    move-object/from16 v86, v92

    move-object/from16 v88, v94

    move-object/from16 v90, v96

    move-object/from16 v92, v98

    move-object/from16 v94, v100

    move-object/from16 v96, v102

    move-object/from16 v98, v104

    move-object/from16 v100, v106

    move-object/from16 v102, v108

    move-object/from16 v104, v110

    move-object/from16 v106, v112

    move-object/from16 v108, v114

    move-object/from16 v14, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v43

    move-object/from16 v43, v45

    move-object/from16 v45, v47

    move-object/from16 v47, v49

    move-object/from16 v49, v51

    move-object/from16 v51, v53

    move-object/from16 v53, v55

    move-object/from16 v55, v57

    move-object/from16 v57, v59

    move-object/from16 v59, v61

    move-object/from16 v61, v63

    move-object/from16 v63, v65

    move-object/from16 v65, v67

    move-object/from16 v67, v69

    move-object/from16 v69, v71

    move-object/from16 v71, v73

    move-object/from16 v73, v75

    move-object/from16 v75, v77

    move-object/from16 v77, v79

    move-object/from16 v79, v81

    move-object/from16 v81, v83

    move-object/from16 v83, v85

    move-object/from16 v85, v87

    move-object/from16 v87, v89

    move-object/from16 v89, v91

    move-object/from16 v91, v93

    move-object/from16 v93, v95

    move-object/from16 v95, v97

    move-object/from16 v97, v99

    move-object/from16 v99, v101

    move-object/from16 v101, v103

    move-object/from16 v103, v105

    move-object/from16 v105, v107

    move-object/from16 v107, v109

    move-object/from16 v109, v111

    move-object/from16 v110, v113

    move-object/from16 v111, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v21

    move-object/from16 v21, v25

    move-object/from16 v23, v27

    move-object/from16 v25, v29

    move-object/from16 v27, v31

    move-object/from16 v29, v33

    move-object/from16 v31, v35

    move-object/from16 v33, v37

    move-object/from16 v35, v39

    move-object/from16 v37, v41

    move-object/from16 v39, v43

    move-object/from16 v41, v45

    move-object/from16 v43, v47

    move-object/from16 v45, v49

    move-object/from16 v47, v51

    move-object/from16 v49, v53

    move-object/from16 v51, v55

    move-object/from16 v53, v57

    move-object/from16 v55, v59

    move-object/from16 v57, v61

    move-object/from16 v59, v63

    move-object/from16 v61, v65

    move-object/from16 v63, v67

    move-object/from16 v65, v69

    move-object/from16 v67, v71

    move-object/from16 v69, v73

    move-object/from16 v71, v75

    move-object/from16 v73, v77

    move-object/from16 v75, v79

    move-object/from16 v77, v81

    move-object/from16 v79, v83

    move-object/from16 v81, v85

    move-object/from16 v83, v87

    move-object/from16 v85, v89

    move-object/from16 v87, v91

    move-object/from16 v89, v93

    move-object/from16 v91, v95

    move-object/from16 v93, v97

    move-object/from16 v95, v99

    move-object/from16 v97, v101

    move-object/from16 v99, v103

    move-object/from16 v101, v105

    move-object/from16 v103, v107

    move-object/from16 v105, v109

    move-object/from16 v107, v110

    move-object/from16 v109, v111

    filled-new-array/range {v0 .. v109}, [Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType$Companion;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v13

    const/16 v1, 0x10

    if-ge v13, v1, :cond_0

    move v13, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Lkotlin/collections/AbstractList;

    new-instance v2, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v2, v0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    iget-object v3, v3, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->value:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    return-object v0
.end method
