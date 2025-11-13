.class public interface abstract Lcom/android/internal/protolog/common/IProtoLog;
.super Ljava/lang/Object;
.source "IProtoLog.java"


# virtual methods
.method public abstract blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
.end method

.method public abstract blacklist isProtoEnabled()Z
.end method

.method public abstract blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
.end method

.method public abstract blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
.end method
