.class public final Landroid/stats/dnsresolver/DnsResolver$Servers;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/dnsresolver/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Servers"
.end annotation


# static fields
.field public static final blacklist SERVER:J = 0x20b00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/stats/dnsresolver/DnsResolver;


# direct methods
.method public constructor blacklist <init>(Landroid/stats/dnsresolver/DnsResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/stats/dnsresolver/DnsResolver$Servers;->this$0:Landroid/stats/dnsresolver/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
