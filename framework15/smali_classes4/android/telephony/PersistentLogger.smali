.class public Landroid/telephony/PersistentLogger;
.super Ljava/lang/Object;
.source "PersistentLogger.java"


# instance fields
.field private final blacklist mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/PersistentLoggerBackend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    return-void
.end method


# virtual methods
.method public blacklist debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/PersistentLoggerBackend;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/PersistentLoggerBackend;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
