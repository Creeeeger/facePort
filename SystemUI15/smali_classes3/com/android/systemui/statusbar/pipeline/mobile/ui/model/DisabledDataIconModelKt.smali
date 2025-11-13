.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

.field public static final EMPTY_DISABLED_DATA_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    return-void
.end method
