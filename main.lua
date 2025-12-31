--- @sync entry
--- @since 25.12.29
return {
	entry = function(_, job)
		local current = cx.active.current
		local new = (current.cursor + job.args[1]) % #current.files
		ya.emit("arrow", { new - current.cursor })
	end,
}
