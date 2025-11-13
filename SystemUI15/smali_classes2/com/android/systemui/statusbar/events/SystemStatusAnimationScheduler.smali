.class public interface abstract Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBOUNCE_DELAY_CONST:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;->$r8$clinit:I

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->DEBOUNCE_DELAY_CONST:J

    return-void
.end method
