.class final Landroid/media/MediaRouter2$PackageNameUserHandlePair;
.super Ljava/lang/Record;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageNameUserHandlePair"
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
        "packageName",
        "user"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Landroid/os/UserHandle;
    }
.end annotation


# instance fields
.field private final blacklist packageName:Ljava/lang/String;

.field private final blacklist user:Landroid/os/UserHandle;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "user"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;->user:Landroid/os/UserHandle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/MediaRouter2$PackageNameUserHandlePair-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$PackageNameUserHandlePair;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-custom {p0, p1}, call_site_13("equals", (Landroid/media/MediaRouter2$PackageNameUserHandlePair;Ljava/lang/Object;)Z, Landroid/media/MediaRouter2$PackageNameUserHandlePair;, "packageName;user", instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->packageName:Ljava/lang/String;, instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->user:Landroid/os/UserHandle;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    invoke-custom {p0}, call_site_0("hashCode", (Landroid/media/MediaRouter2$PackageNameUserHandlePair;)I, Landroid/media/MediaRouter2$PackageNameUserHandlePair;, "packageName;user", instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->packageName:Ljava/lang/String;, instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->user:Landroid/os/UserHandle;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-custom {p0}, call_site_12("toString", (Landroid/media/MediaRouter2$PackageNameUserHandlePair;)Ljava/lang/String;, Landroid/media/MediaRouter2$PackageNameUserHandlePair;, "packageName;user", instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->packageName:Ljava/lang/String;, instance-get@Landroid/media/MediaRouter2$PackageNameUserHandlePair;->user:Landroid/os/UserHandle;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist user()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;->user:Landroid/os/UserHandle;

    return-object v0
.end method
