.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeStar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.volume.PLUGIN"
    version = 0xbb8
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.volume.PLUGIN"

.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;->$$INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStar;->Companion:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

    return-void
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
