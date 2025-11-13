.class final Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
.super Ljava/lang/Record;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceInvalidatedCallbackRecord"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "executor",
        "runnable"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/util/concurrent/Executor;,
        Ljava/lang/Runnable;
    }
.end annotation


# instance fields
.field private final blacklist executor:Ljava/util/concurrent/Executor;

.field private final blacklist runnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetexecutor(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrunnable(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executor",
            "runnable"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-custom {p0, p1}, call_site_11("equals", (Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;Ljava/lang/Object;)Z, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;, "executor;runnable", instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;, instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist executor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    invoke-custom {p0}, call_site_7("hashCode", (Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)I, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;, "executor;runnable", instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;, instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist runnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-custom {p0}, call_site_6("toString", (Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/lang/String;, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;, "executor;runnable", instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;, instance-get@Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
