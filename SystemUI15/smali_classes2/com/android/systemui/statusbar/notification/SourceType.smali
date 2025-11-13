.class public interface abstract Lcom/android/systemui/statusbar/notification/SourceType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/SourceType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/notification/SourceType$Companion;

    sput-object v0, Lcom/android/systemui/statusbar/notification/SourceType;->Companion:Lcom/android/systemui/statusbar/notification/SourceType$Companion;

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/SourceType;->Companion:Lcom/android/systemui/statusbar/notification/SourceType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
