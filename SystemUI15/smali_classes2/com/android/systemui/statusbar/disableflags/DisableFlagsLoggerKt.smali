.class public abstract Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final defaultDisable1FlagsList:Ljava/util/List;

.field public static final defaultDisable2FlagsList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v1, 0x45

    const/16 v2, 0x65

    const/high16 v3, 0x10000

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/high16 v2, 0x20000

    const/16 v10, 0x4e

    const/16 v11, 0x6e

    invoke-direct {v1, v2, v10, v11}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v3, 0x41

    const/16 v4, 0x61

    const/high16 v5, 0x40000

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v3, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/high16 v4, 0x100000

    const/16 v12, 0x49

    const/16 v13, 0x69

    invoke-direct {v3, v4, v12, v13}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v5, 0x48

    const/16 v6, 0x68

    const/high16 v7, 0x200000

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v5, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v6, 0x42

    const/16 v7, 0x62

    const/high16 v8, 0x400000

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v6, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v7, 0x43

    const/16 v8, 0x63

    const/high16 v9, 0x800000

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v7, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/high16 v8, 0x1000000

    const/16 v14, 0x52

    const/16 v15, 0x72

    invoke-direct {v7, v8, v14, v15}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v8, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v9, 0x53

    const/16 v14, 0x73

    const/high16 v15, 0x2000000

    invoke-direct {v8, v15, v9, v14}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v9, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v14, 0x4f

    const/16 v15, 0x6f

    const/high16 v10, 0x4000000

    invoke-direct {v9, v10, v14, v15}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable1FlagsList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v1, 0x51

    const/16 v2, 0x71

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v12, v13}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/4 v3, 0x4

    const/16 v4, 0x4e

    invoke-direct {v2, v3, v4, v11}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v3, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v4, 0x47

    const/16 v5, 0x67

    const/16 v6, 0x8

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    new-instance v4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const/16 v5, 0x10

    const/16 v6, 0x52

    const/16 v7, 0x72

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;-><init>(ICC)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable2FlagsList:Ljava/util/List;

    return-void
.end method
