.class public abstract Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForegroundServiceTypePermission"
.end annotation


# instance fields
.field protected final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist addToList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->mName:Ljava/lang/String;

    return-object v0
.end method
